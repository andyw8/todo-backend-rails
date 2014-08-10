describe 'routes' do
  it 'should route GET / to todos#index' do
    expect(get: '/').to route_to('todos#index')
  end

  it 'should route POST / to todos#index' do
    expect(post: '/').to route_to('todos#create')
  end

  it 'should route DELETE / to todos#destroy_all' do
    expect(delete: '/').to route_to('todos#destroy_all')
  end

  it 'should route GET /:id to todos#show' do
    expect(get: '/12').to route_to('todos#show', id: "12")
  end

  it 'should route PATCH /:id to todos#update' do
    expect(patch: '/12').to route_to('todos#update', id: "12")
  end

  it 'should route DELETE /:id to todos#destroy' do
    expect(delete: '/12').to route_to('todos#destroy', id: "12")
  end
end
