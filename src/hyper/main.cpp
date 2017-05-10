/**
 * Hyper
 *
 * (c) 2017 Axel Etcheverry
 *
 * For the full copyright and license information, please view the LICENSE
 * file that was distributed with this source code.
 */

#include <hyper/console>
#include <iostream>

int main(int argc, char *argv[]) {
    std::cout << hyper::console::color::Green << "Hyper" << hyper::console::color::ResetAll
              << std::endl;

    return 0;
}
