package impl

import (
	"context"
	"errors"
	"net/http"

	openapi "github.com/nahcnuj/studious-invention/internal/api/v1-default"
)

// IdeasGet - Returns ideas
func (s *ApiService) IdeasGet(ctx context.Context) (openapi.ImplResponse, error) {
	// TODO - update IdeasGet with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, InlineResponse200{}) or use other options such as http.Ok ...
	//return Response(200, InlineResponse200{}), nil

	return openapi.Response(http.StatusNotImplemented, nil), errors.New("IdeasGet method not implemented")
}
