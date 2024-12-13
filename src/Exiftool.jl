module Exiftool

using Perl_jll, Artifacts

exiftool = artifact"exiftool/Image-ExifTool-13.07/exiftool"
fun(file; args = "") = read(`$(perl()) $exiftool $args $file`, String)

end # module Exiftool
