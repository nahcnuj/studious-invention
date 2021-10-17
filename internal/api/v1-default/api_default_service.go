/*
 * 題シェア（仮）
 *
 * 題シェア（仮） API Server
 *
 * API version: 0.0.1
 * Generated by: OpenAPI Generator (https://openapi-generator.tech)
 */

package openapi

import (
	"context"
	"errors"
	"net/http"
)

// DefaultApiService is a service that implements the logic for the DefaultApiServicer
// This service should implement the business logic for every endpoint for the DefaultApi API.
// Include any external packages or services that will be required by this service.
type DefaultApiService struct {
}

// NewDefaultApiService creates a default api service
func NewDefaultApiService() DefaultApiServicer {
	return &DefaultApiService{}
}

// ThemesGet - Returns themes
func (s *DefaultApiService) ThemesGet(ctx context.Context) (ImplResponse, error) {
	// TODO - update ThemesGet with the required logic for this service method.
	// Add api_default_service.go to the .openapi-generator-ignore to avoid overwriting this service implementation when updating open api generation.

	//TODO: Uncomment the next line to return response Response(200, InlineResponse200{}) or use other options such as http.Ok ...
	//return Response(200, InlineResponse200{}), nil

	return Response(http.StatusNotImplemented, nil), errors.New("ThemesGet method not implemented")
}
