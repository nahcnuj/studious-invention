// Code generated by entc, DO NOT EDIT.

package theme

const (
	// Label holds the string label denoting the theme type in the database.
	Label = "theme"
	// FieldID holds the string denoting the id field in the database.
	FieldID = "id"
	// Table holds the table name of the theme in the database.
	Table = "themes"
)

// Columns holds all SQL columns for theme fields.
var Columns = []string{
	FieldID,
}

// ValidColumn reports if the column name is valid (part of the table columns).
func ValidColumn(column string) bool {
	for i := range Columns {
		if column == Columns[i] {
			return true
		}
	}
	return false
}
