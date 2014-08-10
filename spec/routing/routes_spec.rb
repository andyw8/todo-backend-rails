describe 'routes' do
  it 'should route / to home#index' do
    expect(get: '/').to route_to('home#index')
  end

end
