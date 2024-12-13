module Exiftool

using Perl_jll, Artifacts

export exiftool

const exiftool_path = artifact"exiftool/Image-ExifTool-13.07/exiftool"

exiftool(file; args = ``) = read(`$(perl()) $exiftool_path $args $file`, String)

end # module Exiftool
