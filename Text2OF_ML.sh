#!/bin/sh

cat <<EOT >> ReynoldsTensor
/*--------------------------------*- C++ -*----------------------------------*\\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     | Website:  https://openfoam.org
    \\  /    A nd           | Version:  6
     \\/     M anipulation  |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       volTensorField;
    location    "0";
    object      ReynoldsTensor;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -2 0 0 0 0];

internalField   nonuniform List<tensor>
36834  //cellcount to be replaced 
(
EOT
paste ReynoldsTensor.txt >> R_RF_v2
cat <<EOT >> ReynoldsTensor
)
;
boundaryField
{
    front
    {
        type            empty;
    }
    top
    {
        type            calculated;
        value           uniform (0 0 0 0 0 0 0 0 0);
    }
    back
    {
        type            empty;
    }
    bottom
    {
        type            calculated;
        value           uniform (0 0 0 0 0 0 0 0 0);
    }
    outlet
    {
        type            calculated;
        value           uniform (0 0 0 0 0 0 0 0 0);
    }
    inlet
    {
        type            calculated;
        value           uniform (1.86292e-08 0 0 0 0 0 0 0 0);
    }
    topFront
    {
        type            calculated;
        value           uniform (0 0 0 0 0 0 0 0 0);
    }
    bottomFront
    {
        type            calculated;
        value           uniform (0 0 0 0 0 0 0 0 0);
    }

}
// ************************************************************************* //
EOT


