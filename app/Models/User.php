<?php
namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens; // Add this import
use Illuminate\Database\Eloquent\SoftDeletes;

class User extends Authenticatable
{
     use SoftDeletes;
    use HasApiTokens, Notifiable; // Add HasApiTokens trait

    const SUPER_ADMIN = 0;
    const ADMIN = 1;
    const REGULAR_USER = 2;
      protected $dates = ['deleted_at'];

    protected $fillable = [
        'name', 'email', 'password', 'avatar', 'user_type'
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    public function isSuperAdmin()
    {
        return $this->user_type === self::SUPER_ADMIN;
    }

    public function isAdmin()
    {
        return $this->user_type === self::ADMIN;
    }

    public function isRegularUser()
    {
        return $this->User_type === self::REGULAR_USER;
    }
    // app/Models/User.php
public function consultant()
{
    // Assuming consultants table has a 'user_id' foreign key
    return $this->hasOne(Consultant::class);
}
}