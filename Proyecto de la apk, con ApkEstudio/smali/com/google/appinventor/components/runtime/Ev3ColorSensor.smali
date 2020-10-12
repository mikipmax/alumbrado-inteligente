.class public Lcom/google/appinventor/components/runtime/Ev3ColorSensor;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;
.source "Ev3ColorSensor.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->LEGOMINDSTORMS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a color sensor on a LEGO MINDSTORMS EV3 robot."
    iconName = "images/legoMindstormsEv3.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_BOTTOM_OF_RANGE:I = 0x1e

.field private static final DEFAULT_SENSOR_MODE_STRING:Ljava/lang/String; = "reflected"

.field private static final DEFAULT_TOP_OF_RANGE:I = 0x3c

.field private static final DELAY_MILLISECONDS:I = 0x32

.field private static final SENSOR_MODE_AMBIENT:I = 0x1

.field private static final SENSOR_MODE_AMBIENT_STRING:Ljava/lang/String; = "ambient"

.field private static final SENSOR_MODE_COLOR:I = 0x2

.field private static final SENSOR_MODE_COLOR_STRING:Ljava/lang/String; = "color"

.field private static final SENSOR_MODE_REFLECTED:I = 0x0

.field private static final SENSOR_MODE_REFLECTED_STRING:Ljava/lang/String; = "reflected"

.field private static final SENSOR_TYPE:I = 0x1d


# instance fields
.field private aboveRangeEventEnabled:Z

.field private belowRangeEventEnabled:Z

.field private bottomOfRange:I

.field private colorChangedEventEnabled:Z

.field private eventHandler:Landroid/os/Handler;

.field private mode:I

.field private modeString:Ljava/lang/String;

.field private previousColor:I

.field private previousLightLevel:I

.field private final sensorValueChecker:Ljava/lang/Runnable;

.field private topOfRange:I

.field private withinRangeEventEnabled:Z


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x0

    .line 66
    const-string v0, "Ev3ColorSensor"

    invoke-direct {p0, p1, v0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 48
    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:I

    .line 49
    const-string v0, "reflected"

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->modeString:Ljava/lang/String;

    .line 54
    iput v2, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;

    .line 69
    new-instance v0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor$1;-><init>(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorValueChecker:Ljava/lang/Runnable;

    .line 114
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->TopOfRange(I)V

    .line 117
    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BottomOfRange(I)V

    .line 118
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->BelowRangeEventEnabled(Z)V

    .line 119
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->AboveRangeEventEnabled(Z)V

    .line 120
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->WithinRangeEventEnabled(Z)V

    .line 121
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->ColorChangedEventEnabled(Z)V

    .line 122
    const-string v0, "reflected"

    invoke-virtual {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->Mode(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I

    return v0
.end method

.method static synthetic access$202(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I

    return p1
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->colorChangedEventEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->toColorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I

    return v0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I

    return p1
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bottomOfRange:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/google/appinventor/components/runtime/Ev3ColorSensor;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/appinventor/components/runtime/Ev3ColorSensor;

    .prologue
    .line 35
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->topOfRange:I

    return v0
.end method

.method private getSensorValue(Ljava/lang/String;)I
    .locals 8
    .param p1, "functionName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v2, 0x0

    .line 321
    iget v3, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorPortNumber:I

    const/16 v4, 0x1d

    iget v5, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->readInputPercentage(Ljava/lang/String;IIII)I

    move-result v6

    .line 328
    .local v6, "level":I
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:I

    if-ne v0, v7, :cond_0

    .line 329
    sparse-switch v6, :sswitch_data_0

    .line 350
    :goto_0
    :sswitch_0
    return v2

    .line 333
    :sswitch_1
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    move v2, v7

    .line 335
    goto :goto_0

    .line 337
    :sswitch_3
    const/4 v2, 0x3

    goto :goto_0

    .line 339
    :sswitch_4
    const/4 v2, 0x4

    goto :goto_0

    .line 341
    :sswitch_5
    const/4 v2, 0x5

    goto :goto_0

    .line 343
    :sswitch_6
    const/4 v2, 0x6

    goto :goto_0

    .line 345
    :sswitch_7
    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    move v2, v6

    .line 350
    goto :goto_0

    .line 329
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc -> :sswitch_1
        0x19 -> :sswitch_2
        0x25 -> :sswitch_3
        0x32 -> :sswitch_4
        0x3e -> :sswitch_5
        0x4b -> :sswitch_6
        0x57 -> :sswitch_7
    .end sparse-switch
.end method

.method private setMode(Ljava/lang/String;)V
    .locals 1
    .param p1, "newModeString"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 444
    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousColor:I

    .line 445
    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->previousLightLevel:I

    .line 447
    const-string v0, "reflected"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:I

    .line 456
    :goto_0
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->modeString:Ljava/lang/String;

    .line 457
    return-void

    .line 449
    :cond_0
    const-string v0, "ambient"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:I

    goto :goto_0

    .line 451
    :cond_1
    const-string v0, "color"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:I

    goto :goto_0

    .line 454
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private toColorName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "functionName"    # Ljava/lang/String;
    .param p2, "colorCode"    # I

    .prologue
    .line 355
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 356
    const-string v0, "No Color"

    .line 376
    :goto_0
    return-object v0

    .line 358
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 376
    const-string v0, "No Color"

    goto :goto_0

    .line 360
    :pswitch_0
    const-string v0, "No Color"

    goto :goto_0

    .line 362
    :pswitch_1
    const-string v0, "Black"

    goto :goto_0

    .line 364
    :pswitch_2
    const-string v0, "Blue"

    goto :goto_0

    .line 366
    :pswitch_3
    const-string v0, "Green"

    goto :goto_0

    .line 368
    :pswitch_4
    const-string v0, "Yellow"

    goto :goto_0

    .line 370
    :pswitch_5
    const-string v0, "Red"

    goto :goto_0

    .line 372
    :pswitch_6
    const-string v0, "White"

    goto :goto_0

    .line 374
    :pswitch_7
    const-string v0, "Brown"

    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public AboveRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone above the range."
    .end annotation

    .prologue
    .line 285
    const-string v0, "AboveRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 286
    return-void
.end method

.method public AboveRangeEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 280
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->aboveRangeEventEnabled:Z

    .line 281
    return-void
.end method

.method public AboveRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the AboveRange event should fire when the light level goes above the TopOfRange."
    .end annotation

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->aboveRangeEventEnabled:Z

    return v0
.end method

.method public BelowRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone below the range."
    .end annotation

    .prologue
    .line 231
    const-string v0, "BelowRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method public BelowRangeEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->belowRangeEventEnabled:Z

    .line 227
    return-void
.end method

.method public BelowRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the BelowRange event should fire when the light level goes below the BottomOfRange."
    .end annotation

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->belowRangeEventEnabled:Z

    return v0
.end method

.method public BottomOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The bottom of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 171
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bottomOfRange:I

    return v0
.end method

.method public BottomOfRange(I)V
    .locals 0
    .param p1, "bottomOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "30"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 182
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->bottomOfRange:I

    .line 183
    return-void
.end method

.method public ColorChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "colorCode"    # I
    .param p2, "colorName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Called when the detected color has changed. The ColorChanged event will occur if the Mode property is set to \"color\" and the ColorChangedEventEnabled property is set to True."
    .end annotation

    .prologue
    .line 317
    const-string v0, "ColorChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 318
    return-void
.end method

.method public ColorChangedEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 307
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->colorChangedEventEnabled:Z

    .line 308
    return-void
.end method

.method public ColorChangedEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the ColorChanged event should fire when the Mode property is set to \"color\" and the detected color changes."
    .end annotation

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->colorChangedEventEnabled:Z

    return v0
.end method

.method public GetColorCode()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It returns the color code from 0 to 7 corresponding to no color, black, blue, green, yellow, red, white and brown."
    .end annotation

    .prologue
    .line 143
    iget v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 144
    const/4 v1, 0x0

    .line 147
    :goto_0
    return v1

    .line 146
    :cond_0
    const-string v0, "GetColorCode"

    .line 147
    .local v0, "functionName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public GetColorName()Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the color name in one of \"No Color\", \"Black\", \"Blue\", \"Green\", \"Yellow\", \"Red\", \"White\", \"Brown\"."
    .end annotation

    .prologue
    .line 155
    iget v2, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 156
    const-string v2, "No Color"

    .line 160
    :goto_0
    return-object v2

    .line 158
    :cond_0
    const-string v1, "GetColorName"

    .line 159
    .local v1, "functionName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I

    move-result v0

    .line 160
    .local v0, "colorCode":I
    invoke-direct {p0, v1, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->toColorName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public GetLightLevel()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "It returns the light level in percentage, or -1 when the light level cannot be read."
    .end annotation

    .prologue
    .line 131
    iget v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 132
    const/4 v1, -0x1

    .line 135
    :goto_0
    return v1

    .line 134
    :cond_0
    const-string v0, "GetLightLevel"

    .line 135
    .local v0, "functionName":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->getSensorValue(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public Mode()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get the current sensor mode."
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->modeString:Ljava/lang/String;

    return-object v0
.end method

.method public Mode(Ljava/lang/String;)V
    .locals 6
    .param p1, "modeName"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "reflected"
        editorType = "lego_ev3_color_sensor_mode"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 387
    const-string v1, "Mode"

    .line 389
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 390
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SetAmbientMode()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the sensor read the light level without reflected light."
    .end annotation

    .prologue
    .line 435
    const-string v1, "SetAmbientMode"

    .line 437
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    const-string v2, "ambient"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SetColorMode()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enter the color detection mode."
    .end annotation

    .prologue
    .line 409
    const-string v1, "SetColorMode"

    .line 411
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    const-string v2, "color"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_0
    return-void

    .line 412
    :catch_0
    move-exception v0

    .line 413
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public SetReflectedMode()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make the sensor read the light level with reflected light."
    .end annotation

    .prologue
    .line 422
    const-string v1, "SetReflectedMode"

    .line 424
    .local v1, "functionName":Ljava/lang/String;
    :try_start_0
    const-string v2, "reflected"

    invoke-direct {p0, v2}, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->setMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :goto_0
    return-void

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    const/16 v3, 0xc1f

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-virtual {v2, p0, v1, v3, v4}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public TopOfRange()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The top of the range used for the BelowRange, WithinRange, and AboveRange events."
    .end annotation

    .prologue
    .line 193
    iget v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->topOfRange:I

    return v0
.end method

.method public TopOfRange(I)V
    .locals 0
    .param p1, "topOfRange"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "60"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 204
    iput p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->topOfRange:I

    .line 205
    return-void
.end method

.method public WithinRange()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Light level has gone within the range."
    .end annotation

    .prologue
    .line 258
    const-string v0, "WithinRange"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method public WithinRangeEventEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->withinRangeEventEnabled:Z

    .line 254
    return-void
.end method

.method public WithinRangeEventEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether the WithinRange event should fire when the light level goes between the BottomOfRange and the TopOfRange."
    .end annotation

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->withinRangeEventEnabled:Z

    return v0
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->eventHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Ev3ColorSensor;->sensorValueChecker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 463
    invoke-super {p0}, Lcom/google/appinventor/components/runtime/LegoMindstormsEv3Sensor;->onDelete()V

    .line 464
    return-void
.end method
