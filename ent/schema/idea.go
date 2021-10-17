package schema

import "entgo.io/ent"

// Idea holds the schema definition for the Idea entity.
type Idea struct {
	ent.Schema
}

// Fields of the Idea.
func (Idea) Fields() []ent.Field {
	return nil
}

// Edges of the Idea.
func (Idea) Edges() []ent.Edge {
	return nil
}
