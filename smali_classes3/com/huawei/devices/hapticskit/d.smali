.class final Lcom/huawei/devices/hapticskit/d;
.super Lcom/huawei/devices/hapticskit/b;
.source "SourceFile"


# static fields
.field private static final g:Landroid/os/Bundle;

.field private static final h:Landroid/net/Uri;


# instance fields
.field private e:Lcom/huawei/android/os/VibratorEx;

.field private f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "func"

    const-string v2, "sound_to_vibrate_effect"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/huawei/devices/hapticskit/d;->g:Landroid/os/Bundle;

    const-string v0, "content://com.huawei.gameassistant.provider.PublicThirdApi"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/huawei/devices/hapticskit/d;->h:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/huawei/devices/hapticskit/b;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    new-instance p1, Lcom/huawei/android/os/VibratorEx;

    invoke-direct {p1}, Lcom/huawei/android/os/VibratorEx;-><init>()V

    iput-object p1, p0, Lcom/huawei/devices/hapticskit/d;->e:Lcom/huawei/android/os/VibratorEx;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/devices/hapticskit/d;->f:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mPkgName = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/devices/hapticskit/d;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HapticAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 6

    const-string v0, "HapticAdapter"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/huawei/devices/hapticskit/b;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/huawei/devices/hapticskit/d;->h:Landroid/net/Uri;

    const-string v4, "getSwitchStatus"

    sget-object v5, Lcom/huawei/devices/hapticskit/d;->g:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4, p1, v5}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    const-string/jumbo v3, "status"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1

    :catch_0
    const-string p1, "Exception happened"

    :goto_1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_1
    const-string p1, "SecurityException happened"

    goto :goto_1

    :catch_2
    const-string p1, "IllegalArgumentException happened"

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setHwVibrator "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HapticAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "haptic.game"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/devices/hapticskit/d;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/huawei/devices/hapticskit/d;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "4D Switch is not open"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "Input value is null"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huawei/devices/hapticskit/d;->e:Lcom/huawei/android/os/VibratorEx;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lcom/huawei/android/os/VibratorEx;->isSupportHwVibrator(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/huawei/devices/hapticskit/d;->e:Lcom/huawei/android/os/VibratorEx;

    invoke-virtual {v0, p1}, Lcom/huawei/android/os/VibratorEx;->setHwVibrator(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getParameter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HapticAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "Input value is null"

    :goto_0
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-string v2, "haptic.grade.value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "haptic.direction.value"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez p1, :cond_2

    const-string p1, "Phone Model is null"

    goto :goto_0

    :cond_2
    const-string v1, "LIO-.*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "NLE-.*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/huawei/devices/hapticskit/d;->e:Lcom/huawei/android/os/VibratorEx;

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p1, v2}, Lcom/huawei/android/os/VibratorEx;->getHwParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "unsupport"

    if-nez p1, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-object v0

    :cond_6
    const-string p1, "Z"

    return-object p1

    :cond_7
    :goto_1
    const-string p1, "X"

    return-object p1

    :cond_8
    iget-object p1, p0, Lcom/huawei/devices/hapticskit/d;->e:Lcom/huawei/android/os/VibratorEx;

    if-nez p1, :cond_9

    return-object v0

    :cond_9
    invoke-virtual {p1, v2}, Lcom/huawei/android/os/VibratorEx;->getHwParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
