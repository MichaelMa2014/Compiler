//
//  error.hpp
//  Compiler
//
//  Created by 马琛骁 on 11/8/16.
//  Copyright © 2016 Michael Ma. All rights reserved.
//

#ifndef error_hpp
#define error_hpp

#include <stdio.h>

#define LOG(x) do {cerr << "***LOG " << x << endl;} while(0);
#define ERR(x) do {cerr << "***ERR " << x << endl; exit(0);} while(0);

#endif /* error_hpp */
