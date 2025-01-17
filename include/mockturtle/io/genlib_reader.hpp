/* mockturtle: C++ logic network library
 * Copyright (C) 2018-2021  EPFL
 *
 * Permission is hereby granted, free of charge, to any person
 * obtaining a copy of this software and associated documentation
 * files (the "Software"), to deal in the Software without
 * restriction, including without limitation the rights to use,
 * copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following
 * conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
 * HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
 * WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 */

/*!
  \file genlib_reader.hpp
  \brief Reader visitor for GENLIB files

  \author Heinz Riener
  \author Alessandro Tempia Calvino
*/

#pragma once

#include "../traits.hpp"

#include <kitty/constructors.hpp>
#include <lorina/genlib.hpp>
#include <fmt/format.h>

namespace mockturtle
{

enum class phase_type : uint8_t
{
  INV = 0,
  NONINV = 1,
  UNKNOWN = 2,
};

struct pin
{
  std::string name;
  phase_type phase;
  double input_load;
  double max_load;
  double rise_block_delay;
  double rise_fanout_delay;
  double fall_block_delay;
  double fall_fanout_delay;
}; /* pin */

struct gate
{
  unsigned int id;
  std::string name;
  std::string expression;
  uint32_t num_vars;
  kitty::dynamic_truth_table function;
  double area;
  std::vector<pin> pins;
}; /* gate */

/*! \brief lorina callbacks for GENLIB files.
 * 
 * Note that the currently supported syntax for functions is
 * different from the genlib standard. For more info,
 * look into `kitty::create_from_expression`.
 * 
   \verbatim embed:rst

   Example

   .. code-block:: c++

      std::vector<gate> gates;
      lorina::read_genlib( "file.genlib", genlib_reader( gates ) );
   \endverbatim
 */
class genlib_reader : public lorina::genlib_reader
{
public:
  explicit genlib_reader( std::vector<gate>& gates )
    : gates( gates )
  {}

  virtual void on_gate( std::string const& name, std::string const& expression, uint32_t num_vars, double area, std::vector<lorina::pin_spec> const& ps ) const override
  {
    kitty::dynamic_truth_table tt{num_vars};
    create_from_expression( tt, expression );

    std::vector<pin> pp;

    if ( ps.size() == 1 && ps[0].name == "*" )
    {
      char pin_name = 'a';
      for ( auto i = 0; i < num_vars; ++i )
      {
        pp.emplace_back( pin{std::string( 1, pin_name ),
                             phase_type( static_cast<uint8_t>( ps[0].phase ) ),
                             ps[0].input_load, ps[0].max_load,
                             ps[0].rise_block_delay, ps[0].rise_fanout_delay, ps[0].fall_block_delay, ps[0].fall_fanout_delay} );
        ++pin_name;
      }
    }
    else
    {
      for ( const auto& p : ps )
      {
        pp.emplace_back( pin{p.name,
                             phase_type( static_cast<uint8_t>( p.phase ) ),
                             p.input_load, p.max_load,
                             p.rise_block_delay, p.rise_fanout_delay, p.fall_block_delay, p.fall_fanout_delay} );
      }
    }

    gates.emplace_back( gate{static_cast<unsigned int>( gates.size() ), name,
                             expression, num_vars, tt, area, pp} );
  }

protected:
  std::vector<gate>& gates;
}; /* genlib_reader */

} /* namespace mockturtle */
