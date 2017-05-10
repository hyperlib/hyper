/**
 * Hyperscale
 *
 * (c) 2015-2016 Axel Etcheverry
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */
#pragma once

#include <boost/program_options.hpp>

namespace hyper::cli::command {
    namespace po = boost::program_options;

    int New(po::variables_map &vm, po::parsed_options &options, po::options_description &desc);
}
