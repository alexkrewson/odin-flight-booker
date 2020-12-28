# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Airport.delete_all
Airport.create(code: 'PDX')
Airport.create(code: 'SFO')
Airport.create(code: 'JFK')
Airport.create(code: 'DIA')
Airport.create(code: 'SIA')
Airport.create(code: 'BWI')


#Flight.delete_all
Flight.create(begin_datetime: '01/01/2020', duration: '1 hour',  start_id: '1', finish_id: '2')
Flight.create(begin_datetime: '02/01/2020', duration: '3 hours', start_id: '1', finish_id: '3')
Flight.create(begin_datetime: '03/01/2020', duration: '1 hour',  start_id: '1', finish_id: '4')
Flight.create(begin_datetime: '04/01/2020', duration: '8 hours', start_id: '3', finish_id: '1')
Flight.create(begin_datetime: '05/01/2020', duration: '1 hour',  start_id: '3', finish_id: '2')
Flight.create(begin_datetime: '06/01/2020', duration: '4 hours', start_id: '3', finish_id: '4')
Flight.create(begin_datetime: '07/01/2020', duration: '1 hour',  start_id: '5', finish_id: '2')
Flight.create(begin_datetime: '08/01/2020', duration: '6 hours', start_id: '5', finish_id: '3')
Flight.create(begin_datetime: '09/01/2020', duration: '1 hour',  start_id: '5', finish_id: '6')
Flight.create(begin_datetime: '09/02/2020', duration: '1 hour',  start_id: '5', finish_id: '6')
Flight.create(begin_datetime: '09/02/2020', duration: '1 hour',  start_id: '3', finish_id: '1')


