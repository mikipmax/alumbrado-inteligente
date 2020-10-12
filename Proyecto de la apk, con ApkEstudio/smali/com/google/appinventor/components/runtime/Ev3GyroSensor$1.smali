.class Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;
.super Ljava/lang/Object;
.source "Ev3GyroSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3GyroSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x32

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 60
    const-string v2, ""

    .line 62
    .local v2, "functionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    # invokes: Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->getSensorValue(Ljava/lang/String;)D
    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$000(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;Ljava/lang/String;)D

    move-result-wide v0

    .line 65
    .local v0, "currentValue":D
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v3, v4, v6

    if-gez v3, :cond_0

    .line 66
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    # setter for: Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D
    invoke-static {v3, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$102(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)D

    .line 67
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->eventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    .end local v0    # "currentValue":D
    :goto_0
    return-void

    .line 72
    .restart local v0    # "currentValue":D
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_3

    .line 73
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-virtual {v3, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChanged(D)V

    .line 77
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    # setter for: Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D
    invoke-static {v3, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$102(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;D)D

    .line 80
    .end local v0    # "currentValue":D
    :cond_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->eventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 74
    .restart local v0    # "currentValue":D
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->mode:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->previousValue:D
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3GyroSensor;)D

    move-result-wide v4

    sub-double v4, v0, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v3, v4, v8

    if-ltz v3, :cond_1

    .line 75
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3GyroSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3GyroSensor;

    invoke-virtual {v3, v0, v1}, Lcom/google/appinventor/components/runtime/Ev3GyroSensor;->SensorValueChanged(D)V

    goto :goto_1
.end method
