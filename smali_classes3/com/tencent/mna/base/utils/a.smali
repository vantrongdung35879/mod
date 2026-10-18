.class public Lcom/tencent/mna/base/utils/a;
.super Ljava/lang/Object;
.source "HardwareUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mna/base/utils/a$a;
    }
.end annotation


# static fields
.field private static a:I = -0x1

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mna/base/utils/a;->b:Ljava/lang/String;

    .line 2
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mna/base/utils/a;->c:Ljava/lang/String;

    .line 3
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mna/base/utils/a;->d:Ljava/lang/String;

    .line 4
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mna/base/utils/a;->e:Ljava/lang/String;

    .line 5
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mna/base/utils/a;->f:Ljava/lang/String;

    .line 6
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mna/base/utils/a;->g:Ljava/lang/String;

    .line 7
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sput-object v0, Lcom/tencent/mna/base/utils/a;->h:Ljava/lang/String;

    return-void
.end method

.method public static a()I
    .locals 2

    .line 1
    sget v0, Lcom/tencent/mna/base/utils/a;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/material/chip/Chip$$ExternalSyntheticApiModelOutline0;->m()I

    move-result v0

    sput v0, Lcom/tencent/mna/base/utils/a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x1

    .line 7
    sput v0, Lcom/tencent/mna/base/utils/a;->a:I

    .line 9
    :goto_0
    sget v0, Lcom/tencent/mna/base/utils/a;->a:I

    return v0
.end method
