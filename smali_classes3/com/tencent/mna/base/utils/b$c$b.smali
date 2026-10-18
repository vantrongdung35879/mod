.class Lcom/tencent/mna/base/utils/b$c$b;
.super Ljava/lang/Object;
.source "MobileUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/mna/base/utils/b$c;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/telephony/SignalStrength;

.field final synthetic b:Lcom/tencent/mna/base/utils/b$c;


# direct methods
.method constructor <init>(Lcom/tencent/mna/base/utils/b$c;Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/mna/base/utils/b$c$b;->b:Lcom/tencent/mna/base/utils/b$c;

    iput-object p2, p0, Lcom/tencent/mna/base/utils/b$c$b;->a:Landroid/telephony/SignalStrength;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "MobileSignalListener onSignalStrengthsChanged signalLevel:"

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/mna/base/utils/b$c$b;->a:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    sget v1, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    const-class v1, Landroid/telephony/SignalStrength;

    const-string v4, "getEvdoLevel"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 8
    iget-object v4, p0, Lcom/tencent/mna/base/utils/b$c$b;->a:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    const-class v1, Landroid/telephony/SignalStrength;

    const-string v4, "getLevel"

    invoke-virtual {v1, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 11
    iget-object v4, p0, Lcom/tencent/mna/base/utils/b$c$b;->a:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    const/4 v4, 0x4

    if-le v1, v4, :cond_2

    const/4 v1, 0x4

    :cond_2
    if-gez v1, :cond_3

    const/4 v1, 0x0

    .line 25
    :cond_3
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->a()I

    move-result v4

    .line 26
    invoke-static {v1}, Lcom/tencent/mna/base/utils/b;->b(I)I

    .line 28
    sget v1, Lcom/tencent/mna/base/utils/a$a;->a:I

    const/16 v5, 0x1d

    if-ge v1, v5, :cond_4

    .line 29
    const-class v1, Landroid/telephony/SignalStrength;

    const-string v5, "getDbm"

    invoke-virtual {v1, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 33
    iget-object v2, p0, Lcom/tencent/mna/base/utils/b$c$b;->a:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/tencent/mna/base/utils/b;->a(I)I

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/tencent/mna/base/utils/b$c$b;->b:Lcom/tencent/mna/base/utils/b$c;

    invoke-static {v1}, Lcom/tencent/mna/base/utils/b$c;->a(Lcom/tencent/mna/base/utils/b$c;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 39
    iget-object v1, p0, Lcom/tencent/mna/base/utils/b$c$b;->b:Lcom/tencent/mna/base/utils/b$c;

    invoke-static {v1}, Lcom/tencent/mna/base/utils/b$c;->a(Lcom/tencent/mna/base/utils/b$c;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "phone"

    .line 40
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_6

    .line 42
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_5

    const/16 v2, 0x13

    if-eq v1, v2, :cond_5

    const/16 v2, 0x8b

    if-ne v1, v2, :cond_6

    .line 44
    :cond_5
    const-class v1, Landroid/telephony/SignalStrength;

    const-string v2, "getLteRssnr"

    .line 45
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/tencent/mna/base/utils/b$c$b;->a:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 47
    sget-object v2, Lcom/tencent/mna/base/utils/a;->b:Ljava/lang/String;

    const-string v3, "huawei"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "honor"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 49
    div-int/lit8 v1, v1, 0xa

    goto :goto_2

    :cond_6
    const v1, 0xffff

    .line 54
    :cond_7
    :goto_2
    invoke-static {v1}, Lcom/tencent/mna/base/utils/b;->c(I)I

    .line 55
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->a()I

    move-result v1

    if-eq v4, v1, :cond_8

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "=>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->a()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sinr:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Lcom/tencent/mna/base/utils/b;->b()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MobileSignalListener onSignalStrengthsChanged exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/tencent/mna/v1;->a(Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method
