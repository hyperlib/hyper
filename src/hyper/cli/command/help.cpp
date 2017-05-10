/**
 * Hyper
 *
 * (c) 2017 Axel Etcheverry
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#include <hyper/cli/command/help.hpp>
#include <hyper/cli/version.hpp>
#include <iostream>

namespace hyper::cli::command {
    namespace po = boost::program_options;

    int Help(po::variables_map &vm, po::parsed_options &option, po::options_description &desc) {
        std::cout << HYPER_NAME << " - C++ package manager" << std::endl
                << std::endl
                << desc << std::endl
                << std::endl;

        return EXIT_SUCCESS;
    }
}
