package formats

import (
	"image"
	"github.com/geek1011/BookBrowser/models"
)

type IndexerFunc func(filename string) (book *models.Book, cover image.Image, err error)
type Format struct {
	Glob      string
	Extension string 
	Indexer   IndexerFunc
}
type FormatList []*Format
var Formats FormatList

func RegisterFormat(f *Format) {
	for _, i := range Formats {
		if i.Extension == f.Extension {
			return
		}
	}

	Formats = append(Formats, f)
}
