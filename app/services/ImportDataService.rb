require 'csv'

class ImportDataService
    def initialize(file, current_user)
      @file = file
      @current_user = current_user
    end

    def call
      CSV.foreach(@file.path, headers: true) do |row|
          detector = CreditCardValidations::Detector.new(row[4])
          franchise = detector.brand
          save(row, franchise)
      end
    end

    def save(row, franchise)
      Contact.create(
        name: row[0],
        date_of_birth: row[1],
        phone: row[2],
        address: row[3],
        credit_card: row[4],
        franchise: franchise,
        email: row[5],
        user: @current_user
      )
    end
end