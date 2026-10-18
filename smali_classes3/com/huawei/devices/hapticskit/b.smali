.class public Lcom/huawei/devices/hapticskit/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:I = 0x1

.field protected static final b:I = 0x2


# instance fields
.field protected c:Landroid/os/Handler;

.field protected d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/devices/hapticskit/b;->c:Landroid/os/Handler;

    iput-object p2, p0, Lcom/huawei/devices/hapticskit/b;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
