package schema

import "entgo.io/ent"

// Theme holds the schema definition for the Theme entity.
type Theme struct {
	ent.Schema
}

// Fields of the Theme.
func (Theme) Fields() []ent.Field {
	return nil
}

// Edges of the Theme.
func (Theme) Edges() []ent.Edge {
	return nil
}
