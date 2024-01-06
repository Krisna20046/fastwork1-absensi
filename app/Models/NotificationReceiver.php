<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class NotificationReceiver extends Model
{
    use HasFactory;
    protected $table = 'notification_receivers';
    protected $fillable = [
        'notification_id', 'emp_id', 'pushed_at', 'created_at', 'updated_at'
    ];

    public function notification()
    {
        return $this->belongsTo(Notification::class, 'notification_id');
    }
}
