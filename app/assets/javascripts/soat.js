$(document).on('blur', '.identification-number-field', function () {
  var identification_number = $('.identification-number-field').val();
  var identification_type = $('.identification-type-select').val();

  if (identification_type != ""){
    $.ajax({
        url: $('#url_identification_number').data('url'),
        data: { identification_number : identification_number,
                identification_type : identification_type },
        dataType: 'script'
      });
  }
});

$(document).on('change', '.identification-type-select', function () {
  var identification_number = $('.identification-number-field').val();
  var identification_type = $('.identification-type-select').val();

  if (identification_number != "" && identification_type != ""){
    $.ajax({
        url: $('#url_identification_number').data('url'),
        data: { identification_number : identification_number,
                identification_type : identification_type },
        dataType: 'script'
      });
  }
});

$(document).on('blur', '.license-plate-field', function () {
  var license_plate = $('.license-plate-field').val();

  if (license_plate != ""){
    $.ajax({
        url: $('#url_license_plate').data('url'),
        data: { license_plate : license_plate },
        dataType: 'script'
      });
  }
});

$(document).on('change', '.vehicle-class-select', function () {
  var vehicle_class = $('.vehicle-class-select').val();

  if (vehicle_class != ""){
    $.ajax({
        url: $('#url_vehicle_class').data('url'),
        data: { vehicle_class : vehicle_class },
        dataType: 'script'
      });
  }
});
