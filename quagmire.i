%module quagmire

// Add necessary symbols to generated header
%{
#include "quagmire.h"
%}

// Process symbols in header
%include "quagmire.h"
