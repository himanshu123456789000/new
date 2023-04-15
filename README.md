# Stripe Integration in Rails

This is a sample Rails application that demonstrates how to integrate Stripe payments into a web application.

## Setup

1. Clone this repository
2. Install dependencies with `bundle install`
3. Create a `.env` file with your Stripe API keys:

STRIPE_PUBLISHABLE_KEY=<your publishable key>
STRIPE_SECRET_KEY=<your secret key>


4. Migrate the database with `rails db:migrate`
5. Start the server with `rails s`

## Usage

1. Navigate to `localhost:3000/payments/new` in your web browser
2. Fill out the payment form with valid details
3. Click the "Pay" button to submit the payment
4. If the payment is successful, you will be redirected to the success page. If the payment is canceled, you will be redirected to the cancel page.

## How it works

This Rails application uses the [Stripe API](https://stripe.com/docs/api) to create a Checkout Session and handle payments. When a customer submits the payment form, the Rails application creates a Checkout Session with the required details, including the line items, success URL, and cancel URL. The customer is redirected to the Checkout page to complete the payment, and if the payment is successful, Stripe sends a webhook to the Rails application to confirm the payment.

The `PaymentsController` handles the `new`, `success`, and `cancel` actions. The `new` action creates the Checkout Session, while the `success` and `cancel` actions handle the success and cancel events, respectively.

## Contributing

Contributions are welcome! If you find a bug or want to add a feature, please open an issue or pull request.

## License

This project is licensed under the [MIT License](https://opensource.org/licenses/MIT).
# Stripe_integration
# strip_integration
