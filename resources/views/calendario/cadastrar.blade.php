@extends('app')

@section('titulo')
Calendário
@stop

@section('conteudo')
<h3>Calendário capitulo Guardiões da Fraternidade</h3>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        var initialLocaleCode = 'pt-br';
        var localeSelectorEl = document.getElementById('locale-selector');
        var calendarEl = document.getElementById('calendar');

        var calendar = new FullCalendar.Calendar(calendarEl, {
            plugins: ['interaction', 'dayGrid', 'timeGrid', 'list'],

            buttonText: {
                today: 'Hoje',
                month: 'Mês',
                week: 'Semana',
                listMonth: 'Lista',
                prev: 'Anterior',
                next: 'Próximo',
            },
            header: {
                left: 'prev,next today',
                center: 'title',
                right: 'dayGridMonth,listMonth'
            },
            defaultDate: Date(),
            locale: initialLocaleCode,
            buttonIcons: false, // show the prev/next text
            weekNumbers: true,
            navLinks: true, // can click day/week names to navigate views
            editable: true,
            eventLimit: true, // allow "more" link when too many events
            events: [

                {
                    id: '',
                    title: 'Reunião',
                    start: '2020-04-04 11:11',
                    end: '2020-04-05 11:11',
                    color: '#257e4a'
                },
                {
                    id: '',
                    title: 'Ritualistica',
                    start: '2020-04-07 11:11',
                    color: '#257e4a'
                },
            ]
        });

        calendar.render();

        // build the locale selector's options
        calendar.getAvailableLocaleCodes().forEach(function(localeCode) {
            var optionEl = document.createElement('option');
            optionEl.value = localeCode;
            optionEl.selected = localeCode == initialLocaleCode;
            optionEl.innerText = localeCode;
            localeSelectorEl.appendChild(optionEl);
        });

        // when the selected option changes, dynamically change the calendar option
        localeSelectorEl.addEventListener('change', function() {
            if (this.value) {
                calendar.setOption('locale', this.value);
            }
        });

    });
</script>



<div id='calendar'></div>




@stop