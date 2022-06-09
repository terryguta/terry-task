function modal(modal) {
    var array = modal.split(" ");
    var modal_ = array.map(array => array.toLowerCase());
    $('#'+modal_[0]).modal('show');
    $('#'+modal_[1]).modal('show');
}
