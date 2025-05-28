
#include "parser.h"

using namespace SMTParser;

void test_evaluator() {
    // Create a parser using factory method
    auto parser = SMTParser::newParser();
    
    // Alternative: create a parser with file in one step
    auto fileParser = SMTParser::newParser("../test/formula.smt2");
    
    // Create a model
    auto model = SMTParser::newModel();
    
    // Create and manipulate variables
    auto x = parser->mkVarInt("x");
    auto y = parser->mkVarInt("y");
    
    // Add assignments to model
    model->add(x, parser->mkConstInt(10));
    model->add(y, parser->mkConstInt(20));
    std::cout << "x = " << dumpSMTLIB2(x) << std::endl;
    std::cout << "y = " << dumpSMTLIB2(y) << std::endl;
    
    // Evaluate expressions using the model
    auto expr = parser->mkAdd({x, y});
    std::cout << "expr = " << dumpSMTLIB2(expr) << std::endl;
    auto result = parser->evaluate(expr, model);
    std::cout << "result = " << dumpSMTLIB2(result) << std::endl;
    
    std::cout << "x + y = " << dumpSMTLIB2(result) << std::endl;
}

void test_parser() {
    // Initialize the parser
    SMTParser::Parser parser;

    // Parse an SMT-LIB2 file
    if (!parser.parse("../test/formula.smt2")) {
        std::cerr << "Error parsing file" << std::endl;
    }

    // Retrieve the parsed assertions
    auto assertions = parser.getAssertions();

    // Output the assertions
    for(auto constraint: assertions){
        std::cout << dumpSMTLIB2(constraint) << std::endl;
    }
}

void test_construction() { 
    // Initialize the parser engine
    SMTParser::Parser parser;

    // Create integer variables
    auto x = parser.mkVar(INT_SORT, "x");
    auto y = parser.mkVarInt("y");

    // Construct the expression: (x + y) > 10
    auto sum = parser.mkAdd({x, y});
    auto constant = parser.mkConstInt(10);
    auto constraint = parser.mkGt(sum, constant);

    // Output SMT-LIB2 representation
    std::cout << dumpSMTLIB2(constraint) << std::endl;
    // Output: (> (+ x y) 10)
}

int main(int argc, char* argv[]) {
    // test_parser();

    // test_construction();

    // test_evaluator();

    // return 0;

    // the input parser
    std::shared_ptr<SMTParser::Parser> parser = 
        std::make_shared<SMTParser::Parser>();

    // the input file
    std::string input_file = argv[1];

    // parse the input file
    if(parser->parse(input_file)) {
        std::cout << "parse success" << std::endl;
        // Retrieve the parsed assertions
        auto assertions = parser->getAssertions();
        std::cout << "assertions size: " << assertions.size() << std::endl;
        // for(auto constraint: assertions){
        //     std::cout << "before arithNormalize: " << std::endl;
        //     std::cout << parser->toString(constraint) << std::endl;
        //     std::cout << "after arithNormalize: " << std::endl;
        //     std::cout << parser->toString(parser->arithNormalize(constraint)) << std::endl;
        // }
        std::cout << "assertions: " << std::endl;
        for(auto constraint: assertions){
            std::cout << parser->toString(constraint) << std::endl;
        }
        auto cnf = parser->toCNF(assertions);
        std::cout << "CNF: " << std::endl;
        std::cout << parser->toString(cnf) << std::endl;

        auto bool_vars = parser->getCNFBoolVars();
        for(auto var: bool_vars){
            std::cout << parser->toString(var) << std::endl;
            std::cout << "maps to "<< parser->toString(parser->getCNFAtom(var)) << std::endl;
        }
        auto cnf_atoms = parser->getCNFAtoms();
        for(auto atom: cnf_atoms){
            std::cout << parser->toString(atom) << std::endl;
        }
        
        
        // auto dnf = parser->toDNF(assertions);
        // std::cout << "DNF: " << std::endl;
        // std::cout << parser->toString(dnf) << std::endl;
        // auto nnf = parser->toNNF(assertions);
        // std::cout << "NNF: " << std::endl;
        // std::cout << parser->toString(nnf) << std::endl;

        // Output the assertions
        // for(auto constraint: assertions){
        //     std::cout << dumpSMTLIB2(constraint) << std::endl;
        // }
    } else {
        std::cout << "parse failed" << std::endl;
    }

    return 0;
}