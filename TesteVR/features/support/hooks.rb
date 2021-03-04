require "report_builder"
require "pry"

at_exit do
    t = Time.now
    t.to_s
    report_path = 'data/reports/REPORT ' + t.strftime('%d/%m/%y') + ' ' + t.strftime('%H:%M:%S')

    ReportBuilder.configure do |config|
      config.input_path = "data/reports.json"
      config.report_path = report_path
      config.report_types = [:html]
      config.report_title = "ConsutaCEP"
      config.additional_info = {
          Data_execucão: t.strftime('%d/%m/%y'),
          Horário_execução: t.strftime('%H:%M:%S'),
      }
      config_include_images = true
    end
    ReportBuilder.build_report

    folder = "#{Dir.pwd}/data/reports"
    file_to_tranfer = "#{report_path}.html"

end
