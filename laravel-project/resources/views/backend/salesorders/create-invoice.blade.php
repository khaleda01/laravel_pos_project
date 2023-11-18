@extends('frontend.layout.header')
      @section('content')

      <html lang="en">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <title>POS Sales Invoice</title>
            <style>
                body {
                    font-family: Arial, sans-serif;
                    margin: 20px;
                }
        
                .invoice-container {
                    width: 80%;
                    margin: auto;
                    background: #fff;
                    padding: 20px;
                    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                }
        
                .invoice-header,
                .invoice-footer {
                    background: #4CAF50;
                    color: #fff;
                    text-align: center;
                    padding: 10px;
                }
        
                .invoice-details {
                    display: flex;
                    justify-content: space-between;
                    margin-bottom: 20px;
                }
        
                .invoice-details div {
                    flex: 1;
                }
        
                table {
                    width: 100%;
                    border-collapse: collapse;
                    margin-top: 20px;
                }
        
                th, td {
                    border: 1px solid #ddd;
                    padding: 8px;
                    text-align: left;
                }
        
                th {
                    background-color: #4CAF50;
                    color: #fff;
                }
        
                .print-button {
                    margin-top: 20px;
                    text-align: center;
                }
        
                @media print {
                    body {
                        margin: 0;
                        padding: 0;
                    }
        
                    .invoice-container {
                        width: 100%;
                        box-shadow: none;
                    }
                }
            </style>
        </head>
        <body>
        
        <div class="invoice-container">
            <div class="invoice-header">
                <h2>POS Sales Invoice</h2>
            </div>
        
            <div class="invoice-details">
                <div>
                    <p><strong>Invoice #: </strong>INV-2023001</p>
                    <p><strong>Date: </strong>November 18, 2023</p>
                    <p><strong>Employee: </strong>John Doe</p>
                </div>
                <div>
                    <p><strong>Customer: </strong>Jane Smith</p>
                    <p><strong>Payment Method: </strong>Credit Card</p>
                </div>
            </div>
        
            <table>
                <thead>
                    <tr>
                        <th>Product</th>
                        <th>Quantity</th>
                        <th>Unit Price</th>
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Product A</td>
                        <td>2</td>
                        <td>$25.00</td>
                        <td>$50.00</td>
                    </tr>
                    <tr>
                        <td>Product B</td>
                        <td>1</td>
                        <td>$30.00</td>
                        <td>$30.00</td>
                    </tr>
                    <!-- Add more rows as needed -->
                </tbody>
            </table>
        
            <div class="invoice-footer">
                <p><strong>Total: </strong>$80.00</p>
            </div>
        
            <div class="print-button">
                <button onclick="window.print()">Print Invoice</button>
            </div>
        </div>
        
        </body>
        </html>







      @endsection