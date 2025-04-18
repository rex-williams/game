#include <stdio.h>
#include <GL/glut.h>

void render(void);
void keyboard(unsigned char key, int x, int y);

int main (int argc, char **argv)
{
    glutInit(&argc, argv);
    glutInitDisplayMode(GLUT_RGB | GLUT_DOUBLE | GLUT_DEPTH);
    glutInitWindowPosition(100, 100);
    glutInitWindowSize(640, 480);
    glutCreateWindow("Snake");

    glutMainLoop();

    return 1;
}

void render()
{

}
