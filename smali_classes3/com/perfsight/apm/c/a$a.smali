.class public Lcom/perfsight/apm/c/a$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfsight/apm/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:[I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perfsight/apm/c/a$a;->b:[I

    iput-object p1, p0, Lcom/perfsight/apm/c/a$a;->a:Ljava/lang/String;

    new-array p1, p2, [I

    iput-object p1, p0, Lcom/perfsight/apm/c/a$a;->b:[I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 1

    iget-object v0, p0, Lcom/perfsight/apm/c/a$a;->b:[I

    return-object v0
.end method
