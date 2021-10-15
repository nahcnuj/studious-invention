package impl

import (
	"context"

	openapi "github.com/nahcnuj/studious-invention/internal/api/v1-default"
)

// HelloGet - Returns \&quot;Hello world.\&quot;
func (s *ApiService) HelloGet(ctx context.Context) (openapi.ImplResponse, error) {
	return openapi.Response(200, "Hello world."), nil
}
