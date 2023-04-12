import {*} with "./graph.jac";

walker create_family_tree {
    root {
        family_root = spawn here ++> graph::family_tree;
        take -->;
    }
    family_root {
        father = spawn here ++> node::person(
            id = "195913010060",
            name = "Vijitha",
            date_of_birth = "1959-05-09",
            profession = "Retired Grama Niladhari",
            gender = "Male"
        );
        mother = spawn here ++> node::person(
            id = "617024144V",
            name = "Malani",
            date_of_birth = "1961-07-20",
            profession = "Teacher",
            gender = "Female"
        );
        son = spawn here ++>node::person(
            id = "972610070V",
            name = "Pavan",
            date_of_birth = "1997-09-17",
            profession = "Student",
            gender = "Male"
        );

        father <+[married]+> mother;
        son +[child]+> father;
        son +[child]+> mother;

    }
}