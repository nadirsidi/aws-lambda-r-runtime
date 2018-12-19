## Minimum to run R binary
* Copy R binary shell script `R` to `/usr/bin/R`
* Copy entire contents of `usr-lib64-R` to '/usr/lib64/R'. Will have to make that directory first.
* Copy `libtre.so.5.0.0` to `/usr/lib64/R/libtre.so.5` (normally a simlink)

## Next steps
* Move R lambda docker to dockerhub
* Try to use Codebuild to pull out the above files into a deployment package
* Figure out how to make the bootstrap and R function for lambda
