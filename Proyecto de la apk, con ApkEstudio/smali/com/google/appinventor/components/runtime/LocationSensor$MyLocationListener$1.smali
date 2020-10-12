.class Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;
.super Ljava/lang/Object;
.source "LocationSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->onLocationChanged(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

.field final synthetic val$argAltitude:D

.field final synthetic val$argLatitude:D

.field final synthetic val$argLongitude:D

.field final synthetic val$argSpeed:F


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;DDDF)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    iput-wide p2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argLatitude:D

    iput-wide p4, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argLongitude:D

    iput-wide p6, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argAltitude:D

    iput p8, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argSpeed:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->this$1:Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;

    iget-object v1, v0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener;->this$0:Lcom/google/appinventor/components/runtime/LocationSensor;

    iget-wide v2, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argLatitude:D

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argLongitude:D

    iget-wide v6, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argAltitude:D

    iget v8, p0, Lcom/google/appinventor/components/runtime/LocationSensor$MyLocationListener$1;->val$argSpeed:F

    invoke-virtual/range {v1 .. v8}, Lcom/google/appinventor/components/runtime/LocationSensor;->LocationChanged(DDDF)V

    .line 102
    return-void
.end method
