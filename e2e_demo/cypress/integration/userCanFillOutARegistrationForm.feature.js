describe('user that fills out a registration form', () => {

  describe('with valid information', () => {

    before(() => {
      cy.visit('http://localhost:3474')
      
      cy.get('[data-cy=registration-form]').within(() => {
        cy.get('[data-cy=email]').type('')
        cy.get('[data-cy=password]').type()
        cy.get('[data-cy=submit]').click()
      })
    });

    it('is expected to see a confirmation message', () => {
      cy.get('[data-cy=confirmation-message]').should(
        'containt.text',
        'Thank you for registering!'
      );
    });
  })
})