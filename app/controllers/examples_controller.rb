class ExamplesController < ApplicationController
  before_action :set_variables
  layout 'auth', only: %i[login register forgot_password]

  private

  def set_variables
    @notifications = [
      OpenStruct.new(date: 'December 12, 2020', content: 'Nuevo reporte de confiabilidad disponbile para descargar', kind: 'primary', viewed: false),
      OpenStruct.new(date: 'December 7, 2020', content: 'Proyecto NGP finalizado', kind: 'success', viewed: true),
      OpenStruct.new(date: 'December 2, 2020', content: 'Alerta proyecto BRU fuera de plazo', kind: 'warning', viewed: true)
    ]

    @messages = [
      OpenStruct.new(content: "Consulta por problema en BRU", sender: "Emily Fowler · 58m", sender_avatar: 'https://source.unsplash.com/fn_BT9fwg_E/60x60'),
      OpenStruct.new(content: "Fotografias M21 disponibles para entrega", sender: "Jae Chun · 1d", sender_avatar: 'https://source.unsplash.com/AU4VPcFN4LE/60x60'),
      OpenStruct.new(content: "Gran reporte del ultimo mes", sender: "Morgan Alvarez · 2d", sender_avatar: 'https://source.unsplash.com/CS2uCrpNzJY/60x60'),
      OpenStruct.new(content: "Reunión paro de horno aplazada", sender: "Chicken the Dog · 2w", sender_avatar: 'https://source.unsplash.com/Mv9hjnEUHR4/60x60')
    ]
  end
end
