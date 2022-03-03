#include "Tester.hpp"

TEST(Nominal, AddCommand) {
    Ref::Tester tester;
    tester.testAddCommand();
}

TEST(Nominal, Result) {
    Ref::Tester tester;
    tester.testResult();
}

int main(int argc, char **argv) {
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
