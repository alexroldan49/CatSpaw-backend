class AppointmentsController < ApplicationController

    def index
        appointments = Appointment.all
        if appointments
            render json: appointments, status: :ok
        else
            render json: {errors: "Appointments not found"}, status: :not_found
        end
    end

    def show
        appointment = Appointment.find_by(id: params[:id])
        if appointment
            render json: appointment, status: :ok
        else
            render json: {errors: "Appointment not found"}, status: :not_found
        end
    end

    def create
        appointment = Appointment.create(appointment_params)
        if appointment.save
            render json: appointment, status: :created
        else
            render json: {errors: appointment.errors.full_messages} status: :unprocessable_entity
        end
    end


    private

    def appointment_params
        params.permit(:treatment, :duration, :price, :cat_id, :start_time, :end_time, :date)
    end
end
