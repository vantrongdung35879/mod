.class public final Lcom/huawei/game/gamekit/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/game/gamekit/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/game/gamekit/a/a$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/huawei/game/gamekit/a/a$a;->b:Ljava/lang/Object;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/a$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/huawei/game/gamekit/a/a$a;->b:Ljava/lang/Object;

    return-object v0
.end method
