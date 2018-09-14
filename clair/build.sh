if [[ $1 == "v3" ]]
   then export GOPATH=$(pwd -P) && cd src/github.com/coreos/clair &&
       git checkout master && go build ./cmd/clair && git checkout - && cp ./clair $GOPATH/v3/ && echo "Successfully generated Clair V3 binary ./v3/"
elif [[ $1 == "v2" ]]
   then export GOPATH=$(pwd -P) && cd src/github.com/coreos/clair &&
       git checkout release-2.0 && go build ./cmd/clair && git checkout - && cp ./clair $GOPATH/v2/ && echo "Successfully generated Clair V2 binary ./v2/"    
else
    export GOPATH=$(pwd -P) && go build ./src/github.com/coreos/clair/cmd/clair && cp ./clair $GOPATH/local/ && echo "Generated ./local/"
fi
