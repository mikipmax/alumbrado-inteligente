.class Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;
.super Ljava/lang/Object;
.source "Ev3ColorSensor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/Ev3ColorSensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x32

    .line 71
    const-string v2, ""

    .line 73
    .local v2, "functionName":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bluetooth:Lcom/google/appinventor/components/runtime/BluetoothClient;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/BluetoothClient;->IsConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 74
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$000(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 75
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # invokes: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I
    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I

    move-result v0

    .line 77
    .local v0, "currentColor":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-gez v3, :cond_0

    .line 78
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # setter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I
    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$202(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    .line 79
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 112
    .end local v0    # "currentColor":I
    :goto_0
    return-void

    .line 83
    .restart local v0    # "currentColor":I
    :cond_0
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$200(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-eq v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->colorChangedEventEnabled:Z
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$400(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # invokes: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->toColorName(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v4, v2, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$500(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ColorChanged(ILjava/lang/String;)V

    .line 86
    :cond_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # setter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I
    invoke-static {v3, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$202(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    .line 111
    .end local v0    # "currentColor":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 88
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # invokes: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I
    invoke-static {v3, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I

    move-result v1

    .line 89
    .local v1, "currentLightLevel":I
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-gez v3, :cond_4

    .line 90
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # setter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I
    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$602(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    .line 91
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$300(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 96
    :cond_4
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bottomOfRange:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$700(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 97
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->belowRangeEventEnabled:Z
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$800(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bottomOfRange:I
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$700(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-lt v3, v4, :cond_5

    .line 98
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BelowRange()V

    .line 107
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # setter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I
    invoke-static {v3, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$602(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I

    goto :goto_1

    .line 99
    :cond_6
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->topOfRange:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$900(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    if-le v1, v3, :cond_7

    .line 100
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->aboveRangeEventEnabled:Z
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$1000(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->topOfRange:I
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$900(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-gt v3, v4, :cond_5

    .line 101
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->AboveRange()V

    goto :goto_2

    .line 103
    :cond_7
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->withinRangeEventEnabled:Z
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$1100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bottomOfRange:I
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$700(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-lt v3, v4, :cond_8

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I
    invoke-static {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v3

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    # getter for: Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->topOfRange:I
    invoke-static {v4}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->access$900(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I

    move-result v4

    if-le v3, v4, :cond_5

    .line 104
    :cond_8
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;->this$0:Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->WithinRange()V

    goto :goto_2
.end method
