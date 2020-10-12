.class public Lcom/google/appinventor/components/runtime/Pedometer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Pedometer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A Component that acts like a Pedometer. It senses motion via the Accerleromter and attempts to determine if a step has been taken. Using a configurable stride length, it can estimate the distance traveled as well. "
    iconName = "images/pedometer.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final INTERVAL_VARIATION:I = 0xfa

.field private static final NUM_INTERVALS:I = 0x2

.field private static final PEAK_VALLEY_RANGE:F = 40.0f

.field private static final PREFS_NAME:Ljava/lang/String; = "PedometerPrefs"

.field private static final STRIDE_LENGTH:F = 0.73f

.field private static final TAG:Ljava/lang/String; = "Pedometer"

.field private static final WIN_SIZE:I = 0x64


# instance fields
.field private avgPos:I

.field private avgWindow:[F

.field private final context:Landroid/content/Context;

.field private foundNonStep:Z

.field private foundValley:Z

.field private intervalPos:I

.field private lastValley:F

.field private lastValues:[F

.field private numStepsRaw:I

.field private numStepsWithFilter:I

.field private pedometerPaused:Z

.field private prevStopClockTime:J

.field private final sensorManager:Landroid/hardware/SensorManager;

.field private startPeaking:Z

.field private startTime:J

.field private stepInterval:[J

.field private stepTimestamp:J

.field private stopDetectionTimeout:I

.field private strideLength:F

.field private totalDistance:F

.field private winPos:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const v5, 0x3f3ae148    # 0.73f

    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 75
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 55
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    .line 56
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    .line 57
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 58
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 59
    const/16 v1, 0x64

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    .line 60
    iput v5, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 61
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 62
    const/4 v1, 0x2

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    .line 63
    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 64
    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    iput-wide v6, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 65
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 66
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 67
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 68
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 70
    const/16 v1, 0xa

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    .line 71
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    .line 76
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    .line 78
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    .line 79
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 80
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 81
    iput v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 83
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 84
    iput v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 86
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    .line 89
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v2, "PedometerPrefs"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 90
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "Pedometer.stridelength"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 91
    const-string v1, "Pedometer.distance"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 92
    const-string v1, "Pedometer.prevStepCount"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 93
    const-string v1, "Pedometer.clockTime"

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 94
    iget v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    iput v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 96
    const-string v1, "Pedometer"

    const-string v2, "Pedometer Created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method private areStepsEquallySpaced()Z
    .locals 10

    .prologue
    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, "avg":F
    const/4 v6, 0x0

    .line 315
    .local v6, "num":I
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    .local v0, "arr$":[J
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-wide v4, v0, v2

    .line 316
    .local v4, "interval":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    .line 317
    add-int/lit8 v6, v6, 0x1

    .line 318
    long-to-float v7, v4

    add-float/2addr v1, v7

    .line 315
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v4    # "interval":J
    :cond_1
    int-to-float v7, v6

    div-float/2addr v1, v7

    .line 322
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-wide v4, v0, v2

    .line 323
    .restart local v4    # "interval":J
    long-to-float v7, v4

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x437a0000    # 250.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    .line 324
    const/4 v7, 0x0

    .line 327
    .end local v4    # "interval":J
    :goto_2
    return v7

    .line 322
    .restart local v4    # "interval":J
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 327
    .end local v4    # "interval":J
    :cond_3
    const/4 v7, 0x1

    goto :goto_2
.end method

.method private isPeak()Z
    .locals 4

    .prologue
    .line 334
    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v2, v2, 0x32

    rem-int/lit8 v1, v2, 0x64

    .line 335
    .local v1, "mid":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_1

    .line 336
    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v3, v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 337
    const/4 v2, 0x0

    .line 340
    :goto_1
    return v2

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isValley()Z
    .locals 4

    .prologue
    .line 347
    iget v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v2, v2, 0x32

    rem-int/lit8 v1, v2, 0x64

    .line 348
    .local v1, "mid":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_1

    .line 349
    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v3, v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 350
    const/4 v2, 0x0

    .line 353
    :goto_1
    return v2

    .line 348
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public CalibrateStrideLength(Z)V
    .locals 0
    .param p1, "cal"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 483
    return-void
.end method

.method public CalibrateStrideLength()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    const/4 v0, 0x0

    return v0
.end method

.method public CalibrationFailed()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 466
    return-void
.end method

.method public Distance()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The approximate distance traveled in meters."
    .end annotation

    .prologue
    .line 268
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    return v0
.end method

.method public ElapsedTime()J
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Time elapsed in milliseconds since the pedometer was started."
    .end annotation

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_0

    .line 280
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 282
    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public GPSAvailable()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 471
    return-void
.end method

.method public GPSLost()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    return-void
.end method

.method public Moving()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public Pause()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Pause counting of steps and distance."
    .end annotation

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 150
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 151
    const-string v0, "Pedometer"

    const-string v1, "Unregistered listener on pause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 154
    :cond_0
    return-void
.end method

.method public Reset()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resets the step counter, distance measure and time running."
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 129
    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 133
    return-void
.end method

.method public Resume()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes counting, synonym of Start."
    .end annotation

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Start()V

    .line 141
    return-void
.end method

.method public Save()V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves the pedometer state to the phone. Permits permits accumulation of steps and distance between invocations of an App that uses the pedometer. Different Apps will have their own saved state."
    .end annotation

    .prologue
    .line 164
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->context:Landroid/content/Context;

    const-string v3, "PedometerPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 165
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 166
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Pedometer.stridelength"

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 167
    const-string v2, "Pedometer.distance"

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v2, "Pedometer.prevStepCount"

    iget v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 169
    iget-boolean v2, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "Pedometer.clockTime"

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 175
    :goto_0
    const-string v2, "Pedometer.closeTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 176
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 177
    const-string v2, "Pedometer"

    const-string v3, "Pedometer state saved."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void

    .line 172
    :cond_0
    const-string v2, "Pedometer.clockTime"

    iget-wide v4, p0, Lcom/google/appinventor/components/runtime/Pedometer;->prevStopClockTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    sub-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public SimpleStep(IF)V
    .locals 4
    .param p1, "simpleSteps"    # I
    .param p2, "distance"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a raw step is detected"
    .end annotation

    .prologue
    .line 190
    const-string v0, "SimpleStep"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method public SimpleSteps()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The number of simple steps taken since the pedometer has started."
    .end annotation

    .prologue
    .line 294
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    return v0
.end method

.method public Start()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start counting steps"
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    if-eqz v0, :cond_0

    .line 107
    iput-boolean v3, p0, Lcom/google/appinventor/components/runtime/Pedometer;->pedometerPaused:Z

    .line 108
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->startTime:J

    .line 113
    :cond_0
    return-void
.end method

.method public StartedMoving()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 450
    return-void
.end method

.method public Stop()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop counting steps"
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Pedometer;->Pause()V

    .line 121
    return-void
.end method

.method public StopDetectionTimeout()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 257
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    return v0
.end method

.method public StopDetectionTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "2000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The duration in milliseconds of idleness (no steps detected) after which to go into a \"stopped\" state"
    .end annotation

    .prologue
    .line 247
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    .line 248
    return-void
.end method

.method public StoppedMoving()V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 456
    return-void
.end method

.method public StrideLength()F
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 232
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    return v0
.end method

.method public StrideLength(F)V
    .locals 0
    .param p1, "length"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "0.73"
        editorType = "non_negative_float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set the average stride length in meters."
    .end annotation

    .prologue
    .line 221
    iput p1, p0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    .line 222
    return-void
.end method

.method public UseGPS(Z)V
    .locals 0
    .param p1, "gps"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 461
    return-void
.end method

.method public WalkStep(IF)V
    .locals 4
    .param p1, "walkSteps"    # I
    .param p2, "distance"    # F
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is run when a walking step is detected. A walking step is a step that appears to be involved in forward motion."
    .end annotation

    .prologue
    .line 203
    const-string v0, "WalkStep"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public WalkSteps()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "the number of walk steps taken since the pedometer has started."
    .end annotation

    .prologue
    .line 305
    iget v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 360
    const-string v0, "Pedometer"

    const-string v1, "Accelerometer accuracy changed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void
.end method

.method public onDelete()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Pedometer;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 438
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 20
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 365
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v15}, Landroid/hardware/Sensor;->getType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 368
    :cond_0
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/hardware/SensorEvent;->values:[F

    .line 369
    .local v14, "values":[F
    const/4 v9, 0x0

    .line 370
    .local v9, "magnitude":F
    move-object v2, v14

    .local v2, "arr$":[F
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_1

    aget v11, v2, v6

    .local v11, "v":F
    mul-float v15, v11, v11

    add-float/2addr v9, v15

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 373
    .end local v11    # "v":F
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v15, v15, 0x32

    rem-int/lit8 v10, v15, 0x64

    .line 376
    .local v10, "mid":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v15, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Pedometer;->isPeak()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 377
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v15, v15, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    const/high16 v16, 0x42200000    # 40.0f

    cmpl-float v15, v15, v16

    if-lez v15, :cond_3

    .line 379
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 380
    .local v12, "timestamp":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepInterval:[J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    move-wide/from16 v18, v0

    sub-long v18, v12, v18

    aput-wide v18, v15, v16

    .line 381
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    add-int/lit8 v15, v15, 0x1

    rem-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->intervalPos:I

    .line 382
    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 383
    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Pedometer;->areStepsEquallySpaced()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 384
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    if-eqz v15, :cond_2

    .line 385
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 386
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    mul-float v16, v16, v17

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 387
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    .line 389
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    .line 390
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsWithFilter:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/google/appinventor/components/runtime/Pedometer;->WalkStep(IF)V

    .line 391
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->strideLength:F

    move/from16 v16, v0

    add-float v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    .line 395
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    .line 396
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->numStepsRaw:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->totalDistance:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/google/appinventor/components/runtime/Pedometer;->SimpleStep(IF)V

    .line 397
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 401
    .end local v12    # "timestamp":J
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/google/appinventor/components/runtime/Pedometer;->isValley()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 402
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundValley:Z

    .line 403
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    aget v15, v15, v10

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValley:F

    .line 406
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    move/from16 v16, v0

    aput v9, v15, v16

    .line 407
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    rem-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgPos:I

    .line 408
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    move/from16 v16, v0

    const/16 v17, 0x0

    aput v17, v15, v16

    .line 409
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    array-length v7, v2

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_6

    aget v8, v2, v6

    .local v8, "m":F
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    move/from16 v16, v0

    aget v17, v15, v16

    add-float v17, v17, v8

    aput v17, v15, v16

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 393
    .end local v8    # "m":F
    .restart local v12    # "timestamp":J
    :cond_5
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->foundNonStep:Z

    goto/16 :goto_2

    .line 410
    .end local v12    # "timestamp":J
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    move/from16 v16, v0

    aget v17, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->avgWindow:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    aput v17, v15, v16

    .line 411
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_d

    .line 412
    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    .line 413
    .local v3, "i":I
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_8

    add-int/lit8 v3, v3, 0x64

    .line 414
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    move/from16 v16, v0

    aget v17, v15, v16

    const/high16 v18, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v19, v0

    aget v19, v19, v3

    mul-float v18, v18, v19

    add-float v17, v17, v18

    aput v17, v15, v16

    .line 415
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_9

    add-int/lit8 v3, v3, 0x64

    .line 416
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    move/from16 v16, v0

    aget v17, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v18, v0

    aget v18, v18, v3

    add-float v17, v17, v18

    aput v17, v15, v16

    .line 417
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    move/from16 v16, v0

    aget v17, v15, v16

    const/high16 v18, 0x40800000    # 4.0f

    div-float v17, v17, v18

    aput v17, v15, v16

    .line 422
    .end local v3    # "i":I
    :cond_a
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 423
    .local v4, "elapsedTimestamp":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    move-wide/from16 v16, v0

    sub-long v16, v4, v16

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stopDetectionTimeout:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    cmp-long v15, v16, v18

    if-lez v15, :cond_b

    .line 424
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/google/appinventor/components/runtime/Pedometer;->stepTimestamp:J

    .line 427
    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/16 v16, 0x63

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v15, :cond_c

    .line 428
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    .line 431
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    add-int/lit8 v15, v15, 0x1

    rem-int/lit8 v15, v15, 0x64

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    goto/16 :goto_0

    .line 418
    .end local v4    # "elapsedTimestamp":J
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->startPeaking:Z

    if-nez v15, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->winPos:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 419
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aget v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/Pedometer;->lastValues:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    aput v17, v15, v16

    goto :goto_4
.end method
