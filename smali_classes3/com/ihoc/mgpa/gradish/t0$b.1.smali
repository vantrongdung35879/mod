.class public Lcom/ihoc/mgpa/gradish/t0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ihoc/mgpa/gradish/t0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:J

.field public e:I

.field final synthetic f:Lcom/ihoc/mgpa/gradish/t0;


# direct methods
.method public constructor <init>(Lcom/ihoc/mgpa/gradish/t0;Ljava/lang/String;JLjava/lang/String;JI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ihoc/mgpa/gradish/t0$b;->f:Lcom/ihoc/mgpa/gradish/t0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/ihoc/mgpa/gradish/t0$b;->a:Ljava/lang/String;

    .line 3
    iput-wide p3, p0, Lcom/ihoc/mgpa/gradish/t0$b;->b:J

    .line 4
    iput-object p5, p0, Lcom/ihoc/mgpa/gradish/t0$b;->c:Ljava/lang/String;

    .line 5
    iput-wide p6, p0, Lcom/ihoc/mgpa/gradish/t0$b;->d:J

    .line 6
    iput p8, p0, Lcom/ihoc/mgpa/gradish/t0$b;->e:I

    return-void
.end method
