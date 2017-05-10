/**
 * Hyper
 *
 * (c) 2017 Axel Etcheverry
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#include <hyper/cli/command/build.hpp>
#include <iostream>

namespace hyper::cli::command {
    namespace po = boost::program_options;

    int Build(po::variables_map &vm, po::parsed_options &option, po::options_description &desc) {
        return EXIT_SUCCESS;
    }
}
