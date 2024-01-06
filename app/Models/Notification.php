<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Notification extends Model
{
    use HasFactory;
    protected $table = 'notifications';
    protected $fillable = [
        'company_id', 'notif_type', 'message', 'created_at', 'updated_at',
        'created_by', 'updated_by'
    ];

    public function company()
    {
        return $this->belongsTo(Company::class, 'company_id');
    }

    public function receivers()
    {
        return $this->hasMany(NotificationReceiver::class, 'notification_id');
    }
}
