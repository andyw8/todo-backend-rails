describe 'routes' do
  it 'should route GET / to todos#index' do
    expect(get: '/').to route_to('todos#index')
  end

  it 'should route POST / to todos#index' do
    expect(post: '/').to route_to('todos#create')
  end

  it 'should route DELETE / to todos#destroy' do
    expect(delete: '/').to route_to('todos#destroy')
  end

  it 'should route GET /:id to todos#show' do
    expect(get: '/12').to route_to('todos#show', id: "12")
  end
end
