describe 'routes' do
  it 'should route GET / to home#index' do
    expect(get: '/').to route_to('home#index')
  end

  it 'should route POST / to home#index' do
    expect(post: '/').to route_to('home#create')
  end

  it 'should route DELETE / to home#destroy' do
    expect(delete: '/').to route_to('home#destroy')
  end
end
