<footer id="_footer" class="footer row">
    <div class="row right">
        <div class="col s12">
            <?php //"Copyright ©".date("Y")." Todos los Derechos Reservados."?>
        </div>
    </div>
</footer>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/js_general.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/materialize.min.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/datatables.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/dataTables.foundation.min.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/sweetalert2.all.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/moment.min.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/moment.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/Numeral.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/fullcalendar.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/locale-all.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/jquery.daterangepicker.min.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/daterangepicker.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/jquery-ui.js"></script>

<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/chosen.jquery.js"></script>
<!--<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?PHP echo base_url();?>assets/js/bootstrap-select.js"></script>-->
<script>
    var config = {
        '.chosen-select'           : {

        }
    }
    for (var selector in config) {
        $(selector).chosen(config[selector]);
    }
</script>

</body>
</html>