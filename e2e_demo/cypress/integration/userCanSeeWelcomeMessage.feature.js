describe('user that navigates to the application', () => {

  before(() => {
    cy.visit('http://localhost:3474')
  });

  it('is expected to see a welcome message', () => {
    cy.get('h1').should('contain.text', 'Hello user!')
  })
})