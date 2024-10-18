{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell rec {
    buildInputs = with pkgs; [
        python312
        python312Packages.pip
    ];

    shellHook = ''
        python -m venv .venv
        source .venv/bin/activate
        pip install grip
        grip README.md 0.0.0.0
    '';
}
