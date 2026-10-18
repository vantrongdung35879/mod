.class public Lcom/perfsight/apm/apm/o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfsight/apm/apm/o$a;
    }
.end annotation


# static fields
.field private static a:Landroid/app/ActivityManager;

.field private static b:I

.field private static c:Landroid/app/ActivityManager$RunningAppProcessInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    sput-object v0, Lcom/perfsight/apm/apm/o;->c:Landroid/app/ActivityManager$RunningAppProcessInfo;

    return-void
.end method

.method public static a()I
    .locals 1

    :try_start_0
    sget-object v0, Lcom/perfsight/apm/apm/o;->c:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v0, Lcom/perfsight/apm/apm/o;->c:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    div-int/lit8 v0, v0, 0x5

    return v0

    :catch_0
    const/4 v0, 0x4

    return v0
.end method

.method private static a(Landroid/os/Debug$MemoryInfo;)I
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "summary.total-swap"

    invoke-static {p0, v0}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x16

    if-eq v0, v1, :cond_1

    const/16 v1, 0x15

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/os/Debug$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    const/16 p0, 0x18

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    add-int/2addr p0, v1

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    add-int v2, p0, v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    :cond_2
    :goto_0
    return v2
.end method

.method private static a([I)I
    .locals 2

    const/16 v0, 0x83

    aget v0, p0, v0

    const/16 v1, 0x81

    aget p0, p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/content/Context;Z)Lcom/perfsight/apm/apm/o$a;
    .locals 6

    const-string v0, " "

    const-string v1, "MemSz "

    new-instance v2, Lcom/perfsight/apm/apm/o$a;

    invoke-direct {v2}, Lcom/perfsight/apm/apm/o$a;-><init>()V

    :try_start_0
    sget-object v3, Lcom/perfsight/apm/apm/o;->a:Landroid/app/ActivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_0

    const-string v3, "activity"

    :try_start_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    sput-object p0, Lcom/perfsight/apm/apm/o;->a:Landroid/app/ActivityManager;

    :cond_0
    sget p0, Lcom/perfsight/apm/apm/o;->b:I

    if-nez p0, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    sput p0, Lcom/perfsight/apm/apm/o;->b:I

    :cond_1
    sget-object p0, Lcom/perfsight/apm/apm/o;->a:Landroid/app/ActivityManager;

    if-eqz p0, :cond_5

    sget v3, Lcom/perfsight/apm/apm/o;->b:I

    if-nez v3, :cond_2

    goto/16 :goto_0

    :cond_2
    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object p0

    if-eqz p0, :cond_6

    array-length v3, p0

    if-lez v3, :cond_6

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    iput v4, v2, Lcom/perfsight/apm/apm/o$a;->a:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_3

    aget-object v4, p0, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string/jumbo v5, "summary.graphics"

    :try_start_2
    invoke-static {v4, v5}, Lcom/tencent/qimei/ab/a$$ExternalSyntheticApiModelOutline0;->m(Landroid/os/Debug$MemoryInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/perfsight/apm/apm/o$a;->b:I

    :cond_3
    if-eqz p1, :cond_4

    aget-object p1, p0, v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "otherStats"

    :try_start_3
    invoke-virtual {p1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    aget-object v4, p0, v3

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_4

    invoke-static {p1}, Lcom/perfsight/apm/apm/o;->a([I)I

    move-result p1

    iput p1, v2, Lcom/perfsight/apm/apm/o$a;->c:I

    :cond_4
    aget-object p0, p0, v3

    invoke-static {p0}, Lcom/perfsight/apm/apm/o;->a(Landroid/os/Debug$MemoryInfo;)I

    move-result p0

    iput p0, v2, Lcom/perfsight/apm/apm/o$a;->d:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, v2, Lcom/perfsight/apm/apm/o$a;->a:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "  "

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/perfsight/apm/apm/o$a;->b:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/perfsight/apm/apm/o$a;->c:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v2, Lcom/perfsight/apm/apm/o$a;->d:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :cond_5
    :goto_0
    return-object v2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PSS fetch error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/perfsight/apm/utils/p;->b(Ljava/lang/String;)V

    :cond_6
    :goto_1
    invoke-static {}, Lcom/perfsight/apm/apm/c;->a()Lcom/perfsight/apm/apm/c;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/perfsight/apm/apm/c;->a(Lcom/perfsight/apm/apm/o$a;)V

    return-object v2
.end method
