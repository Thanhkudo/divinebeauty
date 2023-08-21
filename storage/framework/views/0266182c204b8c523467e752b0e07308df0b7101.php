

<?php $__env->startSection('content'); ?>
  <h1><?php echo app('translator')->get('You received a new appointment from the system'); ?></h1>

  <p><?php echo app('translator')->get('Content appointment'); ?>: </p>

  <p>
    <strong><?php echo app('translator')->get('Fullname'); ?></strong>: <?php echo e($contact->name??""); ?>

  </p>
  <p>
    <strong><?php echo app('translator')->get('Email'); ?></strong>: <?php echo e($contact->email??""); ?>

  </p>
  <p>
    <strong><?php echo app('translator')->get('Phone'); ?></strong>: <?php echo e($contact->phone??""); ?>

  </p>
  <p>
    <strong><?php echo app('translator')->get('Content note'); ?></strong>: <?php echo e($contact->content??""); ?>

  </p>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('frontend.layouts.email', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\spa\resources\views/frontend/emails/contact.blade.php ENDPATH**/ ?>