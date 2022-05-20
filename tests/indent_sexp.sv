

class ic;
    // ...
endclass
// this should indent to left margin, but indents one stop to right


module foo

    // this should indent to left margin, but indents one stop to right
    generate
        // ...
    endgenerate
    // this should indent to left margin, but indents one stop to right


    // this should indent to left margin, but indents one stop to right
    covergroup
        // ...
    endgroup
    // this should indent to left margin, but indents one stop to right


    // this should indent to left margin, but indents one stop to right
    property
        // ...
    endproperty
    // this should indent to left margin, but indents one stop to right


    // this should indent to left margin, but indents one stop to right
    sequence
        // ...
    endsequence
    // this should indent to left margin, but indents one stop to right


endmodule // foo
// this should indent to left margin, but indents one stop to right


interface class ic;
    // ...
endclass
// this should indent to left margin, but indents one stop to right

virtual class ic;
    // ...
endclass
// this should indent to left margin, but indents one stop to right

class ic;
    // ...
endclass
// this should indent to left margin, but indents one stop to right


class ic2;

    // ...
    class ic3;
	// ...
    endclass // ic3
    // ...

endclass
// this should indent to left margin, but indents one stop to right
