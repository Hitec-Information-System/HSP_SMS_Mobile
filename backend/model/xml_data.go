package model

import "encoding/xml"

type NewDataSet struct {
	XMLName xml.Name `xml:"NewDataSet"`
	Text    string   `xml:",chardata"`
	Table1  struct {
		Text     string `xml:",chardata"`
		COLUMNID string `xml:"COLUMN_ID"`
		VALUE    string `xml:"VALUE"`
	} `xml:"Table1"`
}
